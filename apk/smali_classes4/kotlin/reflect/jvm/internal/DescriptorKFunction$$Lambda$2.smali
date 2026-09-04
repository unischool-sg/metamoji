.class Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKFunction$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKFunction;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKFunction;->accessor$DescriptorKFunction$lambda2(Lkotlin/reflect/jvm/internal/DescriptorKFunction;)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method
