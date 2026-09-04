.class public final enum Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;
.super Ljava/lang/Enum;
.source "DrChangeOrderDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

.field public static final enum BRING_TO_FRONT:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

.field public static final enum RESTORE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

.field public static final enum SEND_TO_BACK:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;
    .locals 3

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->RESTORE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->BRING_TO_FRONT:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    sget-object v2, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->SEND_TO_BACK:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    const-string v1, "RESTORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->RESTORE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    .line 38
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    const-string v1, "BRING_TO_FRONT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->BRING_TO_FRONT:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    .line 39
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    const-string v1, "SEND_TO_BACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->SEND_TO_BACK:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    .line 35
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->$values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;
    .locals 1

    .line 35
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    return-object v0
.end method
