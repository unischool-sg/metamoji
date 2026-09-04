.class public Lkotlin/reflect/jvm/internal/DescriptorKProperty0;
.super Lkotlin/reflect/jvm/internal/DescriptorKProperty;
.source "DescriptorKProperty0.kt"

# interfaces
.implements Lkotlin/reflect/KProperty0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty<",
        "TV;>;",
        "Lkotlin/reflect/KProperty0<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0010\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u001bB\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB+\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0008\u0010\u000fJ\u000f\u0010\u0016\u001a\u00028\u0000H\u0096\u0080\u0004\u00a2\u0006\u0002\u0010\u0017J\u000c\u0010\u0019\u001a\u0004\u0018\u00010\u000eH\u0096\u0080\u0004J\u000f\u0010\u001a\u001a\u00028\u0000H\u0096\u0082\u0004\u00a2\u0006\u0002\u0010\u0017R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00128VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty0;",
        "V",
        "Lkotlin/reflect/KProperty0;",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "name",
        "",
        "signature",
        "boundReceiver",
        "",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "_getter",
        "Lkotlin/Lazy;",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;",
        "getter",
        "getGetter",
        "()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;",
        "get",
        "()Ljava/lang/Object;",
        "delegateValue",
        "getDelegate",
        "invoke",
        "Getter",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _getter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final delegateValue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->_getter:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->delegateValue:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->_getter:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->delegateValue:Lkotlin/Lazy;

    return-void
.end method

.method private static final _getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;
    .locals 1

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)V

    return-object v0
.end method

.method static synthetic accessor$DescriptorKProperty0$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->_getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$DescriptorKProperty0$lambda1(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->delegateValue$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final delegateValue$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty0;)Ljava/lang/Object;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->computeDelegateSource()Ljava/lang/reflect/Member;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->getDelegateImpl(Ljava/lang/reflect/Member;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->delegateValue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty0$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty0$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter<",
            "TV;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->_getter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty0$Getter;

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
