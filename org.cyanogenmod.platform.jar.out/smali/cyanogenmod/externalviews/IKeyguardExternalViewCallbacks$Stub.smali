.class public abstract Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;
.super Landroid/os/Binder;
.source "IKeyguardExternalViewCallbacks.java"

# interfaces
.implements Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

.field static final TRANSACTION_collapseNotificationPanel:I = 0x3

.field static final TRANSACTION_onAttachedToWindow:I = 0x5

.field static final TRANSACTION_onDetachedFromWindow:I = 0x6

.field static final TRANSACTION_requestDismiss:I = 0x1

.field static final TRANSACTION_requestDismissAndStartActivity:I = 0x2

.field static final TRANSACTION_setInteractivity:I = 0x4

.field static final TRANSACTION_slideLockscreenIn:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p0, p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string v5, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismiss()Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .end local v2    # "_result":Z
    :sswitch_2
    const-string v5, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v2

    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    .end local v2    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_3
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->collapseNotificationPanel()V

    return v4

    :sswitch_4
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->setInteractivity(Z)V

    return v4

    .end local v1    # "_arg0":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .end local v1    # "_arg0":Z
    :sswitch_5
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onAttachedToWindow()V

    return v4

    :sswitch_6
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->onDetachedFromWindow()V

    return v4

    :sswitch_7
    const-string v3, "cyanogenmod.externalviews.IKeyguardExternalViewCallbacks"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;->slideLockscreenIn()V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
