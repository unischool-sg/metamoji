.class public final Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext$substitutionSupertypePolicy$1;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$DoCustomTransform;
.source "ReflectTypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->substitutionSupertypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "kotlin/reflect/jvm/internal/types/ReflectTypeSystemContext$substitutionSupertypePolicy$1",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$DoCustomTransform;",
        "transformType",
        "Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;",
        "state",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;",
        "type",
        "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;",
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
.field final synthetic $substitutor:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext$substitutionSupertypePolicy$1;->$substitutor:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    .line 335
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$DoCustomTransform;-><init>()V

    return-void
.end method


# virtual methods
.method public transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext$substitutionSupertypePolicy$1;->$substitutor:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    sget-object v0, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/types/ReflectTypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlin/reflect/KType;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->substitute(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/KTypeProjection;->getType()Lkotlin/reflect/KType;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.types.AbstractKType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    return-object p1
.end method
