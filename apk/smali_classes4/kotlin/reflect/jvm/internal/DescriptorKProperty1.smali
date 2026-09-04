.class public Lkotlin/reflect/jvm/internal/DescriptorKProperty1;
.super Lkotlin/reflect/jvm/internal/DescriptorKProperty;
.source "DescriptorKProperty1.kt"

# interfaces
.implements Lkotlin/reflect/KProperty1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty<",
        "TV;>;",
        "Lkotlin/reflect/KProperty1<",
        "TT;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u001eB+\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rB\u0019\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u000c\u0010\u0010J\u0017\u0010\u0017\u001a\u00028\u00012\u0006\u0010\u0018\u001a\u00028\u0000H\u0096\u0080\u0004\u00a2\u0006\u0002\u0010\u0019J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0018\u001a\u00028\u0000H\u0096\u0080\u0004\u00a2\u0006\u0002\u0010\u0019J\u0017\u0010\u001d\u001a\u00028\u00012\u0006\u0010\u0018\u001a\u00028\u0000H\u0096\u0082\u0004\u00a2\u0006\u0002\u0010\u0019R \u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00138VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty1;",
        "T",
        "V",
        "Lkotlin/reflect/KProperty1;",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "name",
        "",
        "signature",
        "boundReceiver",
        "",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "_getter",
        "Lkotlin/Lazy;",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;",
        "getter",
        "getGetter",
        "()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;",
        "get",
        "receiver",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "delegateSource",
        "Ljava/lang/reflect/Member;",
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
            "Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter<",
            "TT;TV;>;>;"
        }
    .end annotation
.end field

.field private final delegateSource:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/reflect/Member;",
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

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->_getter:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->delegateSource:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->_getter:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$1;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$$Lambda$1;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->delegateSource:Lkotlin/Lazy;

    return-void
.end method

.method private static final _getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;
    .locals 1

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)V

    return-object v0
.end method

.method static synthetic accessor$DescriptorKProperty1$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->_getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic accessor$DescriptorKProperty1$lambda1(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Ljava/lang/reflect/Member;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->delegateSource$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method

.method private static final delegateSource$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKProperty1;)Ljava/lang/reflect/Member;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->computeDelegateSource()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->delegateSource:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->getDelegateImpl(Ljava/lang/reflect/Member;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty1$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty1$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter<",
            "TT;TV;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->_getter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty1$Getter;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/DescriptorKProperty1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
