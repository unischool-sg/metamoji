.class public final enum Lcom/metamoji/ui/task/GetFileTask$Mode;
.super Ljava/lang/Enum;
.source "GetFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/task/GetFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ui/task/GetFileTask$Mode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/ui/task/GetFileTask$Mode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "READ",
        "WRITE",
        "CREATE",
        "DIRECTORY",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/ui/task/GetFileTask$Mode;

.field public static final enum CREATE:Lcom/metamoji/ui/task/GetFileTask$Mode;

.field public static final enum DIRECTORY:Lcom/metamoji/ui/task/GetFileTask$Mode;

.field public static final enum READ:Lcom/metamoji/ui/task/GetFileTask$Mode;

.field public static final enum WRITE:Lcom/metamoji/ui/task/GetFileTask$Mode;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ui/task/GetFileTask$Mode;
    .locals 4

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->READ:Lcom/metamoji/ui/task/GetFileTask$Mode;

    sget-object v1, Lcom/metamoji/ui/task/GetFileTask$Mode;->WRITE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    sget-object v2, Lcom/metamoji/ui/task/GetFileTask$Mode;->CREATE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    sget-object v3, Lcom/metamoji/ui/task/GetFileTask$Mode;->DIRECTORY:Lcom/metamoji/ui/task/GetFileTask$Mode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ui/task/GetFileTask$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/task/GetFileTask$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->READ:Lcom/metamoji/ui/task/GetFileTask$Mode;

    .line 29
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/task/GetFileTask$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->WRITE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    .line 30
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    const-string v1, "CREATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/task/GetFileTask$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->CREATE:Lcom/metamoji/ui/task/GetFileTask$Mode;

    .line 31
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/task/GetFileTask$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->DIRECTORY:Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-static {}, Lcom/metamoji/ui/task/GetFileTask$Mode;->$values()[Lcom/metamoji/ui/task/GetFileTask$Mode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->$VALUES:[Lcom/metamoji/ui/task/GetFileTask$Mode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ui/task/GetFileTask$Mode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ui/task/GetFileTask$Mode;
    .locals 1

    const-class v0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/task/GetFileTask$Mode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ui/task/GetFileTask$Mode;
    .locals 1

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask$Mode;->$VALUES:[Lcom/metamoji/ui/task/GetFileTask$Mode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ui/task/GetFileTask$Mode;

    return-object v0
.end method
