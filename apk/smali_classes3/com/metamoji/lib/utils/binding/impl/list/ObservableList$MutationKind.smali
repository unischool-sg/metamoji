.class public final enum Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;
.super Ljava/lang/Enum;
.source "ObservableList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MutationKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "REFRESH",
        "REMOVE",
        "INSERT",
        "MOVE",
        "CHANGED",
        "utils"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field public static final enum CHANGED:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field public static final enum INSERT:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field public static final enum MOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field public static final enum REFRESH:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

.field public static final enum REMOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;
    .locals 5

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->REFRESH:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->REMOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->INSERT:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    sget-object v3, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->MOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    sget-object v4, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->CHANGED:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    const-string v1, "REFRESH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->REFRESH:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    .line 28
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    const-string v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->REMOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    .line 29
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    const-string v1, "INSERT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->INSERT:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    .line 30
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    const-string v1, "MOVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->MOVE:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    .line 31
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    const-string v1, "CHANGED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->CHANGED:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-static {}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->$values()[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->$VALUES:[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;
    .locals 1

    const-class v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;->$VALUES:[Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;

    return-object v0
.end method
