.class public final Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;
.super Ljava/lang/Object;
.source "MutableCollectionKClass.kt"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "TT;>;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u001b\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u00020\u00042\u00020\u0005B]\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u001e\u0010\t\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n\u0012\u001e\u0010\r\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0014\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0002H\u0096\u0082\u0004J\n\u0010\u001f\u001a\u00020 H\u0096\u0080\u0004J\n\u0010!\u001a\u00020\u0008H\u0096\u0080\u0004J\u0014\u0010\"\u001a\u00020\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010\u0002H\u0097\u0081\u0004R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0007\u001a\u00020\u0008X\u0096\u0084\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0084\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bX\u0096\u0084\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017R\u0015\u0010\u001a\u001a\u00020\u00088VX\u0096\u0084\u0008\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0014R\u0019\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u000bX\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0017R\u001f\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000)0(X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0015\u0010,\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0015\u0010.\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010-R\u0015\u0010/\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010-R\u0015\u00100\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00080\u0010-R\u0015\u00101\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00081\u0010-R\u0015\u00102\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00082\u0010-R\u0015\u00103\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00083\u0010-R\u0015\u00104\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00084\u0010-R\u0015\u00105\u001a\u00020\u001d8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00085\u0010-R\u001d\u00106\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u0003070(X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u00088\u0010+R\u001d\u00109\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00030(X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010+R\u0015\u0010;\u001a\u0004\u0018\u00018\u0000X\u0096\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010=R#\u0010>\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00030\u000b8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010\u0017R\u0017\u0010@\u001a\u0004\u0018\u00010A8\u0016X\u0097\u0085\u0008\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010C\u00a8\u0006D"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;",
        "T",
        "",
        "Lkotlin/reflect/KClass;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
        "Lkotlin/reflect/jvm/internal/KTypeParameterOwnerImpl;",
        "klass",
        "qualifiedName",
        "",
        "createTypeParameters",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/reflect/KTypeParameter;",
        "createSupertypes",
        "Lkotlin/reflect/KType;",
        "<init>",
        "(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getKlass",
        "()Lkotlin/reflect/KClass;",
        "getQualifiedName",
        "()Ljava/lang/String;",
        "typeParameters",
        "getTypeParameters",
        "()Ljava/util/List;",
        "supertypes",
        "getSupertypes",
        "simpleName",
        "getSimpleName",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "isInstance",
        "value",
        "annotations",
        "",
        "getAnnotations",
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
        "()Ljava/lang/Object;",
        "sealedSubclasses",
        "getSealedSubclasses",
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


# instance fields
.field private final klass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final qualifiedName:Ljava/lang/String;

.field private final supertypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation
.end field

.field private final typeParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass<",
            "TT;>;+",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KTypeParameter;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass<",
            "TT;>;+",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KType;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createTypeParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createSupertypes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    .line 28
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->qualifiedName:Ljava/lang/String;

    .line 33
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->typeParameters:Ljava/util/List;

    .line 36
    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->supertypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

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
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

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

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

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

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getNestedClasses()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getObjectInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->qualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSealedSubclasses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    .line 39
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "."

    invoke-static {v0, v3, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    .line 35
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->supertypes:Ljava/util/List;

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

    .line 32
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->typeParameters:Ljava/util/List;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getVisibility()Lkotlin/reflect/KVisibility;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 45
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isCompanion()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isCompanion()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isData()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isFun()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isFun()Z

    move-result v0

    return v0
.end method

.method public isInner()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isInner()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0, p1}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isSealed()Z

    move-result v0

    return v0
.end method

.method public isValue()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-interface {v0}, Lkotlin/reflect/KClass;->isValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MutableCollectionKClass("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/types/MutableCollectionKClass;->klass:Lkotlin/reflect/KClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
