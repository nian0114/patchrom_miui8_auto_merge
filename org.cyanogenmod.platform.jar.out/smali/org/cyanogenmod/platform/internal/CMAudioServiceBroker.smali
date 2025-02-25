.class public Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;
.super Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.source "CMAudioServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;,
        Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService",
        "<",
        "Lcyanogenmod/media/ICMAudioService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CMAudioServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->checkPermission()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v0, "CMAudioServiceBroker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "org.cyanogenmod.cmaudio.service"

    const-string v2, "org.cyanogenmod.cmaudio.service.CMAudioService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$1;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "cyanogenmod.permission.OBSERVE_AUDIO_SESSIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultImplementation()Landroid/os/IInterface;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->getDefaultImplementation()Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultImplementation()Lcyanogenmod/media/ICMAudioService;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->mServiceStubForFailure:Lcyanogenmod/media/ICMAudioService;

    return-object v0
.end method

.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "org.cyanogenmod.audio"

    return-object v0
.end method

.method protected bridge synthetic getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-virtual {p0, p1}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getIBinderAsIInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-static {p1}, Lcyanogenmod/media/ICMAudioService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/media/ICMAudioService;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    sget-object v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    invoke-super {p0, p1}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    const-string v0, "cmaudio"

    new-instance v1, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;-><init>(Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    sget-boolean v0, Lorg/cyanogenmod/platform/internal/CMAudioServiceBroker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CMAudioServiceBroker"

    const-string v1, "service started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
