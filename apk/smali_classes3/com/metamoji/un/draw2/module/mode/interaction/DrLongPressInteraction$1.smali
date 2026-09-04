.class synthetic Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction$1;
.super Ljava/lang/Object;
.source "DrLongPressInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
