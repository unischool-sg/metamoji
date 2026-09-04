.class public Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;
.super Lkotlin/reflect/jvm/internal/DescriptorKProperty;
.source "DescriptorKPropertyN.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000fB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b8VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;",
        "V",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "_getter",
        "Lkotlin/Lazy;",
        "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;",
        "getter",
        "getGetter",
        "()Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;",
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
            "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/DescriptorKProperty;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->_getter:Lkotlin/Lazy;

    return-void
.end method

.method private static final _getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;
    .locals 1

    .line 26
    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)V

    return-object v0
.end method

.method static synthetic accessor$DescriptorKPropertyN$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->_getter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty$Getter;

    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->getGetter()Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Getter;

    return-object v0
.end method

.method public getGetter()Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter<",
            "TV;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;->_getter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN$Getter;

    return-object v0
.end method
