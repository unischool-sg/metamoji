.class public final enum Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
.super Ljava/lang/Enum;
.source "DrOvLayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum DRAWER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum EFFECT:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum GRAPHICS:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum MASK:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum POINTER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

.field public static final enum RUBBER_BAND:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 6

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->DRAWER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->EFFECT:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->GRAPHICS:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->POINTER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->RUBBER_BAND:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->MASK:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "DRAWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->DRAWER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 9
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "EFFECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->EFFECT:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "GRAPHICS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->GRAPHICS:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "POINTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->POINTER:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "RUBBER_BAND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->RUBBER_BAND:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    const-string v1, "MASK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->MASK:Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    .line 6
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->$values()[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/overlay/DrOvLayerType;

    return-object v0
.end method
