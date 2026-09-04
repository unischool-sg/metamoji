.class Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->accessor$DescriptorKPropertyN$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    move-result-object v0

    return-object v0
.end method
