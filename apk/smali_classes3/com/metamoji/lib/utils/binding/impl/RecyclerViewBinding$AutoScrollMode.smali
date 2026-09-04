.class public final enum Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;
.super Ljava/lang/Enum;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "ALL",
        "ONLY_TAIL",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

.field public static final enum ALL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

.field public static final enum NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

.field public static final enum ONLY_TAIL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;
    .locals 3

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->ALL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->ONLY_TAIL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 169
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    .line 170
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->ALL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    .line 171
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    const-string v1, "ONLY_TAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->ONLY_TAIL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    invoke-static {}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->$values()[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->$VALUES:[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;
    .locals 1

    const-class v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;
    .locals 1

    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->$VALUES:[Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-object v0
.end method
