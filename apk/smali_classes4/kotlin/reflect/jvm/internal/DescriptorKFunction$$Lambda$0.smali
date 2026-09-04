.class Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;

.field private final arg$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKFunction;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$0;->arg$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$0;->arg$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/DescriptorKFunction;->accessor$DescriptorKFunction$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKFunction;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    move-result-object v0

    return-object v0
.end method
