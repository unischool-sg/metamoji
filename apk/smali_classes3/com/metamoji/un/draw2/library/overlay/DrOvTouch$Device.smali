.class public final enum Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
.super Ljava/lang/Enum;
.source "DrOvTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

.field public static final enum FINGER:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

.field public static final enum MOUSE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

.field public static final enum PEN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
    .locals 3

    .line 29
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->FINGER:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->PEN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->MOUSE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    const-string v1, "FINGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->FINGER:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    .line 31
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    const-string v1, "PEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->PEN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    const-string v1, "MOUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->MOUSE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    .line 29
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->$values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    return-object v0
.end method
