.class public final enum Lkotlin/reflect/jvm/internal/impl/km/KmVariance;
.super Ljava/lang/Enum;
.source "Nodes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/km/KmVariance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

.field public static final enum IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

.field public static final enum INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

.field public static final enum OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 786
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    const-string v1, "INVARIANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    .line 791
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    const-string v1, "IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    .line 796
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    const-string v1, "OUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->$values()[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 782
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/km/KmVariance;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    return-object v0
.end method
