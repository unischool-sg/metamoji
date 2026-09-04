.class Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;->accessor$DescriptorKProperty$Setter$lambda1(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method
