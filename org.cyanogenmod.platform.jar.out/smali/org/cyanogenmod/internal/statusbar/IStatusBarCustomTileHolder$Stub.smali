.class public abstract Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;
.super Landroid/os/Binder;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p0, p0, v0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_1
    const-string v1, "org.cyanogenmod.internal.statusbar.IStatusBarCustomTileHolder"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder$Stub;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    .local v0, "_result":Lcyanogenmod/app/StatusBarPanelCustomTile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v2}, Lcyanogenmod/app/StatusBarPanelCustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
