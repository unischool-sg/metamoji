.class public final enum Lkotlin/reflect/jvm/internal/impl/km/MemberKind;
.super Ljava/lang/Enum;
.source "Modifiers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/km/MemberKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

.field public static final enum DECLARATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

.field public static final enum DELEGATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

.field public static final enum FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

.field public static final enum SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;


# instance fields
.field private final flag:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;


# direct methods
.method private static final synthetic $values()[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 163
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    .line 171
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    const-string v1, "FAKE_OVERRIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    .line 179
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    const-string v1, "DELEGATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    .line 187
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    const-string v1, "SYNTHESIZED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->$values()[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    const-string v0, "MEMBER_KIND"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;I)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->flag:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lkotlin/reflect/jvm/internal/impl/km/MemberKind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/km/MemberKind;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    return-object v0
.end method


# virtual methods
.method public final getFlag$kotlin_metadata()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;
    .locals 1

    .line 190
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->flag:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    return-object v0
.end method
