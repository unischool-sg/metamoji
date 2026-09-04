.class final enum Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;
.super Ljava/lang/Enum;
.source "DrDiskShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrDiskShapeHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

.field public static final enum DISK_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

.field public static final enum END_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

.field public static final enum START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;
    .locals 4

    .line 71
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->END_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->DISK_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    .line 73
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    const-string v1, "START_DISK_ANGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->START_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    .line 74
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    const-string v1, "END_DISK_ANGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->END_DISK_ANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    .line 75
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    const-string v1, "DISK_WIDTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->DISK_WIDTH:Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    .line 71
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->$values()[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    const-class v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;
    .locals 1

    .line 71
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement$DrDiskShapeHandleType;

    return-object v0
.end method
