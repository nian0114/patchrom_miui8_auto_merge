.class Lcyanogenmod/externalviews/KeyguardExternalView$4;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lcyanogenmod/externalviews/KeyguardExternalView;

    .prologue
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$4;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$4;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->onDetach()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
