.class public final enum Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;
.super Ljava/lang/Enum;
.source "DrOvTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;
    .locals 6

    .line 17
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->NONE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    sget-object v3, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->NONE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "BEGAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "MOVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "ENDED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "LONG_PRESSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    .line 17
    invoke-static {}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->$values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 17
    const-class v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->$VALUES:[Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    return-object v0
.end method
