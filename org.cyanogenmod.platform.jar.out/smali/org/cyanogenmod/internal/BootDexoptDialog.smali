.class public Lorg/cyanogenmod/internal/BootDexoptDialog;
.super Landroid/app/Dialog;
.source "BootDexoptDialog.java"


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mDetailMsg:Landroid/widget/TextView;

.field private final mHideAppDetails:Z

.field private final mMessage:Landroid/widget/TextView;

.field private final mProgress:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "windowType"    # I
    .param p4, "brandLogoResId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3f07000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mHideAppDetails:Z

    invoke-virtual {p0, v4}, Lorg/cyanogenmod/internal/BootDexoptDialog;->requestWindowFeature(I)Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/Window;->setType(I)V

    :cond_0
    const/high16 v2, 0x3f030000    # 0.51171875f

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->setContentView(I)V

    const/high16 v2, 0x3f0b0000    # 0.54296875f

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "brandLogo":Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x3f0b0002

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mMessage:Landroid/widget/TextView;

    const v2, 0x3f0b0003

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    const v2, 0x3f0b0004

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mAppIcon:Landroid/widget/ImageView;

    const v2, 0x3f0b0001

    invoke-virtual {p0, v2}, Lorg/cyanogenmod/internal/BootDexoptDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v6}, Lorg/cyanogenmod/internal/BootDexoptDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->show()V

    iget-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/cyanogenmod/internal/BootDexoptDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v0, 0x7e5

    invoke-static {p0, v0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->create(Landroid/content/Context;I)Lorg/cyanogenmod/internal/BootDexoptDialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lorg/cyanogenmod/internal/BootDexoptDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowType"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const v0, 0x3f020001

    .local v0, "brandLogo":I
    :goto_0
    const-string v3, "android.hardware.type.television"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.software.leanback"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const v2, 0x10304c4

    .local v2, "theme":I
    :goto_1
    new-instance v3, Lorg/cyanogenmod/internal/BootDexoptDialog;

    invoke-direct {v3, p0, v2, p1, v0}, Lorg/cyanogenmod/internal/BootDexoptDialog;-><init>(Landroid/content/Context;III)V

    return-object v3

    .end local v0    # "brandLogo":I
    .end local v2    # "theme":I
    :cond_1
    const/high16 v0, 0x3f020000    # 0.5078125f

    .restart local v0    # "brandLogo":I
    goto :goto_0

    :cond_2
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v2, 0x10304a3

    .restart local v2    # "theme":I
    goto :goto_1

    .end local v2    # "theme":I
    :cond_3
    const v2, 0x1030237

    .restart local v2    # "theme":I
    goto :goto_1
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setProgress(ILandroid/content/pm/ApplicationInfo;II)V
    .locals 10
    .param p1, "stage"    # I
    .param p2, "optimizedApp"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "currentAppPos"    # I
    .param p4, "totalAppCount"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-lez p4, :cond_0

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lorg/cyanogenmod/internal/BootDexoptDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_2

    iget-boolean v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mHideAppDetails:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mMessage:Landroid/widget/TextView;

    const v4, 0x3f080081

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mAppIcon:Landroid/widget/ImageView;

    const v4, 0x3f020004

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x3f080082

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "label":Ljava/lang/CharSequence;
    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mMessage:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const v5, 0x3f080080

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mMessage:Landroid/widget/TextView;

    const v4, 0x3f08007e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mAppIcon:Landroid/widget/ImageView;

    const v4, 0x3f020005

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-ne p1, v7, :cond_3

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    const v4, 0x3f08007c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p1, v8, :cond_4

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    const v4, 0x3f08007d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-ne p1, v5, :cond_5

    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    const v4, 0x3f08007f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/cyanogenmod/internal/BootDexoptDialog;->mDetailMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
