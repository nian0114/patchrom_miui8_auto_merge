.class public Landroid/util/TypedValue;
.super Ljava/lang/Object;
.source "TypedValue.java"


# static fields
.field public static final COMPLEX_MANTISSA_MASK:I = 0xffffff

.field public static final COMPLEX_MANTISSA_SHIFT:I = 0x8

.field public static final COMPLEX_RADIX_0p23:I = 0x3

.field public static final COMPLEX_RADIX_16p7:I = 0x1

.field public static final COMPLEX_RADIX_23p0:I = 0x0

.field public static final COMPLEX_RADIX_8p15:I = 0x2

.field public static final COMPLEX_RADIX_MASK:I = 0x3

.field public static final COMPLEX_RADIX_SHIFT:I = 0x4

.field public static final COMPLEX_UNIT_DIP:I = 0x1

.field public static final COMPLEX_UNIT_FRACTION:I = 0x0

.field public static final COMPLEX_UNIT_FRACTION_PARENT:I = 0x1

.field public static final COMPLEX_UNIT_IN:I = 0x4

.field public static final COMPLEX_UNIT_MASK:I = 0xf

.field public static final COMPLEX_UNIT_MM:I = 0x5

.field public static final COMPLEX_UNIT_PT:I = 0x3

.field public static final COMPLEX_UNIT_PX:I = 0x0

.field public static final COMPLEX_UNIT_SHIFT:I = 0x0

.field public static final COMPLEX_UNIT_SP:I = 0x2

.field public static final DATA_NULL_EMPTY:I = 0x1

.field public static final DATA_NULL_UNDEFINED:I = 0x0

.field public static final DENSITY_DEFAULT:I = 0x0

.field public static final DENSITY_NONE:I = 0xffff

.field private static final DIMENSION_UNIT_STRS:[Ljava/lang/String;

.field private static final FRACTION_UNIT_STRS:[Ljava/lang/String;

.field private static final MANTISSA_MULT:F = 0.00390625f

.field private static final RADIX_MULTS:[F

.field public static final TYPE_ATTRIBUTE:I = 0x2

.field public static final TYPE_DIMENSION:I = 0x5

.field public static final TYPE_FIRST_COLOR_INT:I = 0x1c

.field public static final TYPE_FIRST_INT:I = 0x10

.field public static final TYPE_FLOAT:I = 0x4

.field public static final TYPE_FRACTION:I = 0x6

.field public static final TYPE_INT_BOOLEAN:I = 0x12

.field public static final TYPE_INT_COLOR_ARGB4:I = 0x1e

.field public static final TYPE_INT_COLOR_ARGB8:I = 0x1c

.field public static final TYPE_INT_COLOR_RGB4:I = 0x1f

.field public static final TYPE_INT_COLOR_RGB8:I = 0x1d

.field public static final TYPE_INT_DEC:I = 0x10

.field public static final TYPE_INT_HEX:I = 0x11

.field public static final TYPE_LAST_COLOR_INT:I = 0x1f

.field public static final TYPE_LAST_INT:I = 0x1f

.field public static final TYPE_NULL:I = 0x0

.field public static final TYPE_REFERENCE:I = 0x1

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field public assetCookie:I

.field public changingConfigurations:I

.field public data:I

.field public density:I

.field public resourceId:I

.field public string:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/TypedValue;->RADIX_MULTS:[F

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "px"

    aput-object v1, v0, v3

    const-string v1, "dip"

    aput-object v1, v0, v4

    const-string v1, "sp"

    aput-object v1, v0, v5

    const-string v1, "pt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "in"

    aput-object v1, v0, v6

    const-string v1, "mm"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "%"

    aput-object v1, v0, v3

    const-string v1, "%p"

    aput-object v1, v0, v4

    sput-object v0, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x38000000
        0x34000000
        0x30000000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/TypedValue;->changingConfigurations:I

    return-void
.end method

.method public static applyDimension(IFLandroid/util/DisplayMetrics;)F
    .locals 2
    .param p0, "unit"    # I
    .param p1, "value"    # F
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return p1

    :pswitch_1
    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_2
    invoke-static {p1, p2}, Landroid/util/TypedValueInjector;->miuiScale(FLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    :pswitch_3
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3c638e39

    mul-float/2addr v0, v1

    return v0

    :pswitch_4
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    return v0

    :pswitch_5
    iget v0, p2, Landroid/util/DisplayMetrics;->xdpi:F

    mul-float/2addr v0, p1

    const v1, 0x3d214285

    mul-float/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final coerceToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I
    .param p1, "data"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1f

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    return-object v2

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->DIMENSION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/TypedValue;->FRACTION_UNIT_STRS:[Ljava/lang/String;

    shr-int/lit8 v2, p1, 0x0

    and-int/lit8 v2, v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-lt p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static complexToDimension(ILandroid/util/DisplayMetrics;)F
    .locals 2
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionNoisy(ILandroid/util/DisplayMetrics;)F
    .locals 1
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    .locals 6
    .param p0, "data"    # I
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .local v2, "value":F
    shr-int/lit8 v3, p0, 0x0

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .local v0, "f":F
    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v1, v3

    .local v1, "res":I
    if-eqz v1, :cond_0

    return v1

    :cond_0
    cmpl-float v3, v2, v4

    if-nez v3, :cond_1

    return v5

    :cond_1
    cmpl-float v3, v2, v4

    if-lez v3, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method public static complexToFloat(I)F
    .locals 3
    .param p0, "complex"    # I

    .prologue
    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Landroid/util/TypedValue;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public static complexToFraction(IFF)F
    .locals 1
    .param p0, "data"    # I
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .prologue
    shr-int/lit8 v0, p0, 0x0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p1

    return v0

    :pswitch_1
    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v0

    mul-float/2addr v0, p2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final coerceToString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/TypedValue;->type:I

    .local v0, "t":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    return-object v1

    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v1}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getComplexUnit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v0, v0, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getDimension(Landroid/util/DisplayMetrics;)F
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public final getFloat()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFraction(FF)F
    .locals 1
    .param p1, "base"    # F
    .param p2, "pbase"    # F

    .prologue
    iget v0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    return v0
.end method

.method public setTo(Landroid/util/TypedValue;)V
    .locals 1
    .param p1, "other"    # Landroid/util/TypedValue;

    .prologue
    iget v0, p1, Landroid/util/TypedValue;->type:I

    iput v0, p0, Landroid/util/TypedValue;->type:I

    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iget v0, p1, Landroid/util/TypedValue;->data:I

    iput v0, p0, Landroid/util/TypedValue;->data:I

    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/util/TypedValue;->assetCookie:I

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    iput v0, p0, Landroid/util/TypedValue;->resourceId:I

    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/util/TypedValue;->density:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TypedValue{t=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/util/TypedValue;->assetCookie:I

    if-eqz v1, :cond_1

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2

    const-string v1, " r=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-string v1, "<null>"

    goto :goto_0
.end method
