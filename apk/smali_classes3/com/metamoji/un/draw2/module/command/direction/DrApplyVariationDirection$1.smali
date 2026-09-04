.class synthetic Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;
.super Ljava/lang/Object;
.source "DrApplyVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 264
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
