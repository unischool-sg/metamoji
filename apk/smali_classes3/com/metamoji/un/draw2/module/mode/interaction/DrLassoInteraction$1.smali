.class synthetic Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;
.super Ljava/lang/Object;
.source "DrLassoInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 172
    invoke-static {}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->values()[Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    sget-object v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_SEGMENT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    sget-object v4, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_AREA:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    :catch_2
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    :try_start_3
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 105
    :catch_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    :try_start_4
    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
