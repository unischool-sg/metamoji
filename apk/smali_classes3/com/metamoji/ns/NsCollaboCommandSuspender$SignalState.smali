.class public final enum Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;
.super Ljava/lang/Enum;
.source "NsCollaboCommandSuspender.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboCommandSuspender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignalState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;",
        "",
        "passable",
        "",
        "<init>",
        "(Ljava/lang/String;IZ)V",
        "getPassable",
        "()Z",
        "PERMITTED",
        "FORBIDDEN",
        "RESIGNED",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

.field public static final enum FORBIDDEN:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

.field public static final enum PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

.field public static final enum RESIGNED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;


# instance fields
.field private final passable:Z


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;
    .locals 3

    sget-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    sget-object v1, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->FORBIDDEN:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    sget-object v2, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->RESIGNED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    const-string v1, "PERMITTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->PERMITTED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    .line 23
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    const-string v1, "FORBIDDEN"

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->FORBIDDEN:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    .line 24
    new-instance v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    const-string v1, "RESIGNED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->RESIGNED:Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->$values()[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->$VALUES:[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->passable:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;
    .locals 1

    const-class v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;
    .locals 1

    sget-object v0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->$VALUES:[Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;

    return-object v0
.end method


# virtual methods
.method public final getPassable()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommandSuspender$SignalState;->passable:Z

    return v0
.end method
