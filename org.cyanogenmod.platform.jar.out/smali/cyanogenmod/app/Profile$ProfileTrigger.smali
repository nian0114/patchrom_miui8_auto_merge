.class public Lcyanogenmod/app/Profile$ProfileTrigger;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileTrigger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/Profile$ProfileTrigger$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mState:I

.field private mType:I


# direct methods
.method static synthetic -get0(Lcyanogenmod/app/Profile$ProfileTrigger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcyanogenmod/app/Profile$ProfileTrigger;)I
    .locals 1

    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method static synthetic -set0(Lcyanogenmod/app/Profile$ProfileTrigger;I)I
    .locals 0

    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcyanogenmod/app/Profile$ProfileTrigger$1;

    invoke-direct {v0}, Lcyanogenmod/app/Profile$ProfileTrigger$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/Profile$ProfileTrigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    iput-object p2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    iput p3, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    iput-object p4, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/Profile$ProfileTrigger;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/Profile$ProfileTrigger;
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "name":Ljava/lang/String;
    const-string v5, "wifiAP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .local v4, "type":I
    :goto_0
    invoke-static {v4}, Lcyanogenmod/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    const-string v5, "state"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, "state":I
    const-string v5, "name"

    invoke-interface {p0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "triggerName":Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v3, v0

    :cond_0
    new-instance v5, Lcyanogenmod/app/Profile$ProfileTrigger;

    invoke-direct {v5, v4, v0, v2, v3}, Lcyanogenmod/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-object v5

    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "triggerName":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1
    const-string v5, "btDevice"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .restart local v4    # "type":I
    goto :goto_0

    .end local v4    # "type":I
    :cond_2
    return-object v6
.end method

.method private static getIdType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    if-nez p0, :cond_0

    const-string v0, "ssid"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "address"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    return v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    if-nez v1, :cond_0

    const-string v0, "wifiAP"

    .local v0, "itemType":Ljava/lang/String;
    :goto_0
    const-string v1, "<"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-static {v1}, Lcyanogenmod/app/Profile$ProfileTrigger;->getIdType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" state=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" name=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .end local v0    # "itemType":Ljava/lang/String;
    :cond_0
    const-string v0, "btDevice"

    .restart local v0    # "itemType":Ljava/lang/String;
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcyanogenmod/app/Profile$ProfileTrigger;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    return-void
.end method
