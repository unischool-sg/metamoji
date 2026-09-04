.class public final enum Lcom/metamoji/un/draw2/module/command/DrCommandEventType;
.super Ljava/lang/Enum;
.source "DrCommandEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/command/DrCommandEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum DID_BEGIN_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum DID_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum DID_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum WILL_END_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum WILL_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

.field public static final enum WILL_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;
    .locals 8

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_BEGIN_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_END_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v4, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v5, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v6, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    sget-object v7, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    filled-new-array/range {v0 .. v7}, [Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "DID_BEGIN_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_BEGIN_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 8
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "WILL_END_COMMAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_END_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 9
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "WILL_EXECUTE_COMMAND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "DID_EXECUTE_COMMAND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "WILL_REGISTER_UNDO_MODEL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "DID_REGISTER_UNDO_MODEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "WILL_SEND_COLLABORATION_DATA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    const-string v1, "DID_SEND_COLLABORATION_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    .line 6
    invoke-static {}, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->$values()[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/command/DrCommandEventType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->$VALUES:[Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    return-object v0
.end method
