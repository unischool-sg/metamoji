.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKCallable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$4;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$4;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->accessor$DescriptorKCallable$lambda4(Lkotlin/reflect/jvm/internal/DescriptorKCallable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
