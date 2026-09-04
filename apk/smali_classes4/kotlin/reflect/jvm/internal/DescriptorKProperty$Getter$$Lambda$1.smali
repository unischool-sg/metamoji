.class Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter$$Lambda$1;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;->accessor$DescriptorKProperty$Getter$lambda1(Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    return-object v0
.end method
