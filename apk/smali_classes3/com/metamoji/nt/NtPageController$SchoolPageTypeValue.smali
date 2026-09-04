.class public Lcom/metamoji/nt/NtPageController$SchoolPageTypeValue;
.super Ljava/lang/Object;
.source "NtPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SchoolPageTypeValue"
.end annotation


# static fields
.field public static final FOR_CLASS:I = 0x3

.field public static final FOR_GROUP:I = 0x2

.field public static final FOR_USER:I = 0x1

.field public static final NORMAL:I


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$SchoolPageTypeValue;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
