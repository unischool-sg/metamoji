.class synthetic Lcom/metamoji/ctold/CtPasteboardUtil$1;
.super Ljava/lang/Object;
.source "CtPasteboardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/CtPasteboardUtil;
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

    .line 26
    invoke-static {}, Lcom/metamoji/ctold/object/CtObjectType;->values()[Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/ctold/CtPasteboardUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/metamoji/ctold/CtPasteboardUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/metamoji/ctold/CtPasteboardUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_ELEM:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/metamoji/ctold/CtPasteboardUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_GROUP:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-virtual {v1}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
