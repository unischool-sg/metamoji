.class Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/types/DescriptorKType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$4;->arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType$$Lambda$4;->arg$0:Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->accessor$DescriptorKType$lambda4(Lkotlin/reflect/jvm/internal/types/DescriptorKType;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    return-object v0
.end method
