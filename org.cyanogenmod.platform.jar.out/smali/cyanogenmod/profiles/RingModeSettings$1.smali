.class final Lcyanogenmod/profiles/RingModeSettings$1;
.super Ljava/lang/Object;
.source "RingModeSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/profiles/RingModeSettings;
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
        "Lcyanogenmod/profiles/RingModeSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/RingModeSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcyanogenmod/profiles/RingModeSettings;

    invoke-direct {v0, p1}, Lcyanogenmod/profiles/RingModeSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/RingModeSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcyanogenmod/profiles/RingModeSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcyanogenmod/profiles/RingModeSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcyanogenmod/profiles/RingModeSettings$1;->newArray(I)[Lcyanogenmod/profiles/RingModeSettings;

    move-result-object v0

    return-object v0
.end method
