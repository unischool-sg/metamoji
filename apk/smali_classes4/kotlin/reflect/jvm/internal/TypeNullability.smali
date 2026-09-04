.class public final enum Lkotlin/reflect/jvm/internal/TypeNullability;
.super Ljava/lang/Enum;
.source "ConvertFromJava.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/TypeNullability;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/TypeNullability;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NOT_NULL",
        "NULLABLE",
        "FLEXIBLE",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/TypeNullability;

.field public static final enum FLEXIBLE:Lkotlin/reflect/jvm/internal/TypeNullability;

.field public static final enum NOT_NULL:Lkotlin/reflect/jvm/internal/TypeNullability;

.field public static final enum NULLABLE:Lkotlin/reflect/jvm/internal/TypeNullability;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/TypeNullability;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/TypeNullability;

    sget-object v1, Lkotlin/reflect/jvm/internal/TypeNullability;->NULLABLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    sget-object v2, Lkotlin/reflect/jvm/internal/TypeNullability;->FLEXIBLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    filled-new-array {v0, v1, v2}, [Lkotlin/reflect/jvm/internal/TypeNullability;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Lkotlin/reflect/jvm/internal/TypeNullability;

    const-string v1, "NOT_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/TypeNullability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/TypeNullability;

    .line 82
    new-instance v0, Lkotlin/reflect/jvm/internal/TypeNullability;

    const-string v1, "NULLABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/TypeNullability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->NULLABLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    .line 83
    new-instance v0, Lkotlin/reflect/jvm/internal/TypeNullability;

    const-string v1, "FLEXIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/TypeNullability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->FLEXIBLE:Lkotlin/reflect/jvm/internal/TypeNullability;

    invoke-static {}, Lkotlin/reflect/jvm/internal/TypeNullability;->$values()[Lkotlin/reflect/jvm/internal/TypeNullability;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->$VALUES:[Lkotlin/reflect/jvm/internal/TypeNullability;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/TypeNullability;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/TypeNullability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/TypeNullability;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/TypeNullability;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/TypeNullability;->$VALUES:[Lkotlin/reflect/jvm/internal/TypeNullability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/TypeNullability;

    return-object v0
.end method
