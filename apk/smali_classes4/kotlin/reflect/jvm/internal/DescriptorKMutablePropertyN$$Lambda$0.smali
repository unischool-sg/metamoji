.class Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final arg$0:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->accessor$DescriptorKMutablePropertyN$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    move-result-object v0

    return-object v0
.end method
