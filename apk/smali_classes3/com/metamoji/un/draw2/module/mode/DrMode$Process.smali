.class public final enum Lcom/metamoji/un/draw2/module/mode/DrMode$Process;
.super Ljava/lang/Enum;
.source "DrMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/DrMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Process"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/mode/DrMode$Process;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum LONG_PRESS_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

.field public static final enum _CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;
    .locals 7

    .line 24
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NONE:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v1, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v3, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v4, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v5, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    sget-object v6, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NONE:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "NORMAL_TOUCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "NORMAL_SELECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 28
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "LONG_PRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 29
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "LONG_PRESS_TOUCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 30
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "LONG_PRESS_SELECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->LONG_PRESS_SELECT:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    const-string v1, "_CURRENT_INTERACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->_CURRENT_INTERACTION:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    .line 24
    invoke-static {}, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->$values()[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->$VALUES:[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/mode/DrMode$Process;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    const-class v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->$VALUES:[Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    return-object v0
.end method
