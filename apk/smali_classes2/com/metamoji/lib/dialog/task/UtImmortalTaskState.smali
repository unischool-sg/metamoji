.class public final enum Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;
.super Ljava/lang/Enum;
.source "UtImmortalTaskDef.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
        "",
        "finished",
        "",
        "<init>",
        "(Ljava/lang/String;IZ)V",
        "getFinished",
        "()Z",
        "INITIAL",
        "RUNNING",
        "COMPLETED",
        "ERROR",
        "dialog"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

.field public static final enum COMPLETED:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

.field public static final enum ERROR:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

.field public static final enum INITIAL:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

.field public static final enum RUNNING:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;


# instance fields
.field private final finished:Z


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;
    .locals 4

    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->INITIAL:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->RUNNING:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->COMPLETED:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    sget-object v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->ERROR:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->INITIAL:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    .line 14
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->RUNNING:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    .line 15
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->COMPLETED:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    .line 16
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->ERROR:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    invoke-static {}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->$values()[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->$VALUES:[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->finished:Z

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;
    .locals 1

    const-class v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->$VALUES:[Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    return-object v0
.end method


# virtual methods
.method public final getFinished()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->finished:Z

    return v0
.end method
