.class synthetic Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;
.super Ljava/lang/Object;
.source "DrUnTagProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$unit$tag$DrUnTaggableObject$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 668
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectType;->values()[Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v2}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v3, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v3}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :catch_1
    invoke-static {}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->values()[Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$tag$DrUnTaggableObject$Type:[I

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$tag$DrUnTaggableObject$Type:[I

    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    :catch_3
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    :try_start_4
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
