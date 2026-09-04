.class Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field private final arg$1:Lkotlin/reflect/KClass;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;->arg$1:Lkotlin/reflect/KClass;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt$$Lambda$1;->arg$1:Lkotlin/reflect/KClass;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClassKt;->accessor$MutableCollectionKClassKt$lambda1(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/KClass;Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
