.class public final Lkotlin/reflect/jvm/internal/StandardKTypes;
.super Ljava/lang/Object;
.source "StandardKTypes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/StandardKTypes;",
        "",
        "<init>",
        "()V",
        "ANY",
        "Lkotlin/reflect/KType;",
        "getANY",
        "()Lkotlin/reflect/KType;",
        "NULLABLE_ANY",
        "getNULLABLE_ANY",
        "CLONEABLE",
        "getCLONEABLE",
        "SERIALIZABLE",
        "getSERIALIZABLE",
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
.field private static final ANY:Lkotlin/reflect/KType;

.field private static final CLONEABLE:Lkotlin/reflect/KType;

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/StandardKTypes;

.field private static final NULLABLE_ANY:Lkotlin/reflect/KType;

.field private static final SERIALIZABLE:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/StandardKTypes;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/StandardKTypes;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->INSTANCE:Lkotlin/reflect/jvm/internal/StandardKTypes;

    .line 13
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->ANY:Lkotlin/reflect/KType;

    .line 14
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->nullableTypeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->NULLABLE_ANY:Lkotlin/reflect/KType;

    .line 16
    const-class v0, Ljava/lang/Cloneable;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->CLONEABLE:Lkotlin/reflect/KType;

    .line 17
    const-class v0, Ljava/io/Serializable;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->SERIALIZABLE:Lkotlin/reflect/KType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getANY()Lkotlin/reflect/KType;
    .locals 1

    .line 13
    sget-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->ANY:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getCLONEABLE()Lkotlin/reflect/KType;
    .locals 1

    .line 16
    sget-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->CLONEABLE:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getNULLABLE_ANY()Lkotlin/reflect/KType;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->NULLABLE_ANY:Lkotlin/reflect/KType;

    return-object v0
.end method

.method public final getSERIALIZABLE()Lkotlin/reflect/KType;
    .locals 1

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->SERIALIZABLE:Lkotlin/reflect/KType;

    return-object v0
.end method
