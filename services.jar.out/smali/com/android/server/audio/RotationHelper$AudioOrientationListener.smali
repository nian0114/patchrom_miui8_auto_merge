.class final Lcom/android/server/audio/RotationHelper$AudioOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioOrientationListener"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    return-void
.end method
