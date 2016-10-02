.class public Lcom/android/internal/telephony/HTCQualcommRIL;
.super Lcom/android/internal/telephony/RIL;
.source "HTCQualcommRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c

.field private static final RIL_UNSOL_SECTOR_ID_IND:I = 0xbf1

.field private static final RIL_UNSOL_TPMR_ID:I = 0xbd0


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    return-void
.end method

.method private static responseToStringHTC(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    sparse-switch p0, :sswitch_data_0

    const-string v0, "<unknown response>"

    return-object v0

    :sswitch_0
    const-string v0, "UNSOL_ENTER_LPM"

    return-object v0

    :sswitch_1
    const-string v0, "UNSOL_CDMA_3G_INDICATOR"

    return-object v0

    :sswitch_2
    const-string v0, "UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR"

    return-object v0

    :sswitch_3
    const-string v0, "UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL"

    return-object v0

    :sswitch_4
    const-string v0, "UNSOL_TPMR_ID"

    return-object v0

    :sswitch_5
    const-string v0, "UNSOL_SECTOR_ID_IND"

    return-object v0

    :sswitch_6
    const-string v0, "UNSOL_RESPONSE_PHONE_MODE_CHANGE"

    return-object v0

    :sswitch_7
    const-string v0, "UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    :sswitch_8
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    :sswitch_9
    const-string v0, "UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0xbd0 -> :sswitch_4
        0xbf1 -> :sswitch_5
        0x1772 -> :sswitch_6
        0x520c -> :sswitch_7
        0x520d -> :sswitch_8
        0x520f -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "HTCQualcommRIL: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HTCQualcommRIL;->riljLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/HTCQualcommRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    return-void

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v1, :sswitch_data_1

    :cond_0
    :goto_1
    return-void

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    :sswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/HTCQualcommRIL;->responseToStringHTC(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HTCQualcommRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HTCQualcommRIL;->riljLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HTCQualcommRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0xbd0 -> :sswitch_4
        0xbf1 -> :sswitch_5
        0x1772 -> :sswitch_6
        0x520c -> :sswitch_7
        0x520d -> :sswitch_8
        0x520f -> :sswitch_9
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5f3 -> :sswitch_a
        0xbc1 -> :sswitch_a
        0xbc4 -> :sswitch_a
        0xbcc -> :sswitch_a
        0xbd0 -> :sswitch_a
        0xbf1 -> :sswitch_a
        0x1772 -> :sswitch_a
        0x520c -> :sswitch_a
        0x520d -> :sswitch_a
        0x520f -> :sswitch_a
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .local v0, "CARDSTATE_ABSENT":I
    const/4 v1, 0x2

    .local v1, "CARDSTATE_ERROR":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .local v3, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "cardState":I
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method protected send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTCQualcommRIL: received unsupported request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HTCQualcommRIL;->riljLog(Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_0
        0x6f -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
