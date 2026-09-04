.class public Ljp/classmethod/android/componentlibrary/widget/TimePickerControllerFactory;
.super Ljava/lang/Object;
.source "TimePickerControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimePickerController()Ljp/classmethod/android/componentlibrary/widget/UITimePickerController;
    .locals 1

    .line 20
    new-instance v0, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;

    invoke-direct {v0}, Ljp/classmethod/android/componentlibrary/widget/ICSNumberPickerController;-><init>()V

    return-object v0
.end method
