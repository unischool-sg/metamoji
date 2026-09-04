.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

.field private final arg$1:I


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    iput p2, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;->arg$1:I

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;->arg$0:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    iget v1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;->arg$1:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->accessor$DescriptorKCallable$lambda10(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v0

    return-object v0
.end method
