.class public final Lkotlin/reflect/jvm/internal/types/NothingKClass;
.super Ljava/lang/Object;
.source "NothingKClass.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Void;",
        ">;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0014\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u0096\u0081\u0004J\u0014\u0010\u0013\u001a\u00020\u000e2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0010H\u0097\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0008H\u00d6\u0081\u0004R\u0015\u0010\u0007\u001a\u00020\u00088VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0015\u0010\u000b\u001a\u00020\u00088VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0019\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001f\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u001d0\u001cX\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0015\u0010 \u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0015\u0010\"\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010!R\u0015\u0010#\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010!R\u0015\u0010$\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010!R\u0015\u0010%\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010!R\u0015\u0010&\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010!R\u0015\u0010\'\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010!R\u0015\u0010(\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010!R\u0015\u0010)\u001a\u00020\u000e8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010!R\u001d\u0010*\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030+0\u001cX\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u001fR\u001d\u0010-\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u001cX\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u001fR\u0015\u0010/\u001a\u0004\u0018\u00010\u0002X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R#\u00102\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00010\u00178\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u001aR\u001b\u00104\u001a\u0008\u0012\u0004\u0012\u0002050\u00178\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u001aR\u001b\u00107\u001a\u0008\u0012\u0004\u0012\u0002080\u00178\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u001aR\u0017\u0010:\u001a\u0004\u0018\u00010;8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=\u00a8\u0006>"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/NothingKClass;",
        "Lkotlin/reflect/KClass;",
        "Ljava/lang/Void;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "<init>",
        "()V",
        "simpleName",
        "",
        "getSimpleName",
        "()Ljava/lang/String;",
        "qualifiedName",
        "getQualifiedName",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isInstance",
        "value",
        "toString",
        "annotations",
        "",
        "",
        "getAnnotations",
        "()Ljava/util/List;",
        "constructors",
        "",
        "Lkotlin/reflect/KFunction;",
        "getConstructors",
        "()Ljava/util/Collection;",
        "isAbstract",
        "()Z",
        "isCompanion",
        "isData",
        "isFinal",
        "isFun",
        "isInner",
        "isOpen",
        "isSealed",
        "isValue",
        "members",
        "Lkotlin/reflect/KCallable;",
        "getMembers",
        "nestedClasses",
        "getNestedClasses",
        "objectInstance",
        "getObjectInstance",
        "()Ljava/lang/Void;",
        "sealedSubclasses",
        "getSealedSubclasses",
        "supertypes",
        "Lkotlin/reflect/KType;",
        "getSupertypes",
        "typeParameters",
        "Lkotlin/reflect/KTypeParameter;",
        "getTypeParameters",
        "visibility",
        "Lkotlin/reflect/KVisibility;",
        "getVisibility",
        "()Lkotlin/reflect/KVisibility;",
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


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/types/NothingKClass;


# instance fields
.field private final synthetic $$delegate_0:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/types/NothingKClass;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/types/NothingKClass;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->INSTANCE:Lkotlin/reflect/jvm/internal/types/NothingKClass;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KCallable<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getMembers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getNestedClasses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getNestedClasses()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObjectInstance()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/NothingKClass;->getObjectInstance()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getObjectInstance()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getObjectInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .line 23
    const-string v0, "kotlin.Nothing"

    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSealedSubclasses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .line 20
    const-string v0, "Nothing"

    return-object v0
.end method

.method public getSupertypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSupertypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getVisibility()Lkotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isCompanion()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isCompanion()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isData()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isFun()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isFun()Z

    move-result v0

    return v0
.end method

.method public isInner()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isInner()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0, p1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isSealed()Z

    move-result v0

    return v0
.end method

.method public isValue()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/NothingKClass;->$$delegate_0:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NothingKClass"

    return-object v0
.end method
