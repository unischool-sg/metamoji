.class Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

.field private final arg$1:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/types/DescriptorKType;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$1;->arg$1:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$1;->arg$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->accessor$DescriptorKType$lambda1(Lkotlin/reflect/jvm/internal/types/DescriptorKType;Lkotlin/jvm/functions/Function0;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
