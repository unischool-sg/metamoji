.class public final Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;
.super Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;
.source "DescriptorKPropertyN.kt"

# interfaces
.implements Lkotlin/reflect/KMutableProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN<",
        "TV;>;",
        "Lkotlin/reflect/KMutableProperty<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0010B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c8VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;",
        "V",
        "Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;",
        "Lkotlin/reflect/KMutableProperty;",
        "container",
        "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;",
        "descriptor",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;)V",
        "_setter",
        "Lkotlin/Lazy;",
        "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;",
        "setter",
        "getSetter",
        "()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;",
        "Setter",
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
.field private final _setter:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter<",
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

    .line 34
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/DescriptorKPropertyN;-><init>(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)V

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->_setter:Lkotlin/Lazy;

    return-void
.end method

.method private static final _setter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;
    .locals 1

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V

    return-object v0
.end method

.method static synthetic accessor$DescriptorKMutablePropertyN$lambda0(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;
    .locals 0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->_setter$lambda$0(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty$Setter;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->getSetter()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KMutableProperty$Setter;

    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter<",
            "TV;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;->_setter:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;

    return-object v0
.end method
