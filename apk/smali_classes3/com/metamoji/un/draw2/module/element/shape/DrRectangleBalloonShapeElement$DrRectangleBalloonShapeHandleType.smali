.class final enum Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
.super Ljava/lang/Enum;
.source "DrRectangleBalloonShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrRectangleBalloonShapeHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

.field public static final enum CORNER_RADIUS:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

.field public static final enum TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

.field public static final enum TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
    .locals 4

    .line 75
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->CORNER_RADIUS:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    .line 77
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    const-string v1, "TAIL_POSITION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_POSITION:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    .line 78
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    const-string v1, "TAIL_WIDTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->TAIL_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    .line 79
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    const-string v1, "CORNER_RADIUS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->CORNER_RADIUS:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    .line 75
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->$values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 75
    const-class v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleBalloonShapeElement$DrRectangleBalloonShapeHandleType;

    return-object v0
.end method
