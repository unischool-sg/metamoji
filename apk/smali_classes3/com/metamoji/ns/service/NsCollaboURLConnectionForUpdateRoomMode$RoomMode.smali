.class public final enum Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;
.super Ljava/lang/Enum;
.source "NsCollaboURLConnectionForUpdateRoomMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoomMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

.field public static final enum DELETE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

.field public static final enum FREE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

.field public static final enum READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;
    .locals 3

    .line 22
    sget-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->FREE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    sget-object v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    sget-object v2, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->DELETE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    const-string v1, "FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->FREE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 24
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    const-string v1, "READONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->READONLY:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 25
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    const-string v1, "DELETE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->DELETE:Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    .line 22
    invoke-static {}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->$values()[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->$VALUES:[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;
    .locals 1

    .line 22
    sget-object v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->$VALUES:[Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    invoke-virtual {v0}, [Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/service/NsCollaboURLConnectionForUpdateRoomMode$RoomMode;

    return-object v0
.end method
