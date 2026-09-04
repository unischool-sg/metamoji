.class public final Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;
.super Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;
.source "DescriptorKPropertyN.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0096\u0084\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;",
        "V",
        "Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;",
        "property",
        "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;",
        "<init>",
        "(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V",
        "getProperty",
        "()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;",
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
.field private final property:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN<",
            "TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/DescriptorKProperty$Setter;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;->property:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    return-void
.end method


# virtual methods
.method public bridge synthetic getProperty()Lkotlin/reflect/KProperty;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;->getProperty()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    return-object v0
.end method

.method public getProperty()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN<",
            "TV;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;->property:Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    return-object v0
.end method

.method public bridge synthetic getProperty()Lkotlin/reflect/jvm/internal/DescriptorKProperty;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN$Setter;->getProperty()Lkotlin/reflect/jvm/internal/DescriptorKMutablePropertyN;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/DescriptorKProperty;

    return-object v0
.end method
