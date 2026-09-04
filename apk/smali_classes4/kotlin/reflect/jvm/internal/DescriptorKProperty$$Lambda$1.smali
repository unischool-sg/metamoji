.class Lkotlin/reflect/jvm/internal/DescriptorKProperty$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;->accessor$DescriptorKProperty$lambda1(Lkotlin/reflect/jvm/internal/DescriptorKProperty;)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    return-object v0
.end method
