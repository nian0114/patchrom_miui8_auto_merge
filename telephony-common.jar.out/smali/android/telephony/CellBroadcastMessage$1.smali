.class final Landroid/telephony/CellBroadcastMessage$1;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellBroadcastMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/CellBroadcastMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastMessage;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Landroid/telephony/CellBroadcastMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellBroadcastMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellBroadcastMessage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/telephony/CellBroadcastMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/CellBroadcastMessage$1;->newArray(I)[Landroid/telephony/CellBroadcastMessage;

    move-result-object v0

    return-object v0
.end method
