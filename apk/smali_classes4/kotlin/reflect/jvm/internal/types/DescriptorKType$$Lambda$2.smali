.class Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->accessor$DescriptorKType$lambda2(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
