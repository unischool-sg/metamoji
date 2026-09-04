.class public Lcom/metamoji/nt/NtLayerController$SystemLayerType;
.super Ljava/lang/Object;
.source "NtLayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtLayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemLayerType"
.end annotation


# static fields
.field public static final BACKGROUND:Ljava/lang/String; = "system:background"

.field public static final BGDATA:Ljava/lang/String; = "system:bgdata"

.field public static final COMMON:Ljava/lang/String; = "system:common"

.field public static final EDIT:Ljava/lang/String; = "system:edit"

.field public static final FORM:Ljava/lang/String; = "system:form"

.field public static final GRID:Ljava/lang/String; = "system:grid"

.field public static final OFFLINE_PERSONAL:Ljava/lang/String; = "system:offline_personal"

.field public static final PERSONAL:Ljava/lang/String; = "system:personal"

.field public static final PERSONAL_TEMPLATE:Ljava/lang/String; = "system:personal_template"

.field public static final PRIVATE:Ljava/lang/String; = "system:private"

.field public static final TEACHER_PERSONAL:Ljava/lang/String; = "system:teacher_personal"


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtLayerController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtLayerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/metamoji/nt/NtLayerController$SystemLayerType;->this$0:Lcom/metamoji/nt/NtLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
