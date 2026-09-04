.class final enum Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;
.super Ljava/lang/Enum;
.source "DrGroupDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrExecutionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

.field public static final enum ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

.field public static final enum REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;
    .locals 2

    .line 60
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 63
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    const-string v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 60
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->$values()[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    const-class v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;
    .locals 1

    .line 60
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    return-object v0
.end method
