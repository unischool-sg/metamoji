.class synthetic Lcom/metamoji/un/draw2/module/selection/DrSelection$1;
.super Ljava/lang/Object;
.source "DrSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/selection/DrSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 845
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/un/draw2/module/selection/DrSelection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
