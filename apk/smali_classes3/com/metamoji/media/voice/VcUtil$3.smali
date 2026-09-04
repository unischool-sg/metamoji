.class synthetic Lcom/metamoji/media/voice/VcUtil$3;
.super Ljava/lang/Object;
.source "VcUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/voice/VcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$ctold$object$CtObjectType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 524
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectType;->values()[Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/media/voice/VcUtil$3;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
