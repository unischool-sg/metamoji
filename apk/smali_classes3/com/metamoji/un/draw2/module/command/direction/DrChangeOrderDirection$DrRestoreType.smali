.class final enum Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;
.super Ljava/lang/Enum;
.source "DrChangeOrderDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrRestoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

.field public static final enum NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

.field public static final enum REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;
    .locals 2

    .line 60
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    filled-new-array {v0, v1}, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    .line 63
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    const-string v1, "REVERSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    .line 60
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->$values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;
    .locals 1

    .line 60
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    return-object v0
.end method
